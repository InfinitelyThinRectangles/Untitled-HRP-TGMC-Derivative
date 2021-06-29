import { useBackend, useLocalState } from '../../backend';
import { Button, Section, TextArea, Box, Grid, Divider } from '../../components';

export const BackgroundInformation = (props, context) => {
  const { act, data, config } = useBackend<PlayerPreferencesData>(context);
  const {
    slot,
    flavor_text,
    med_record,
    gen_record,
    sec_record,
    exploit_record,
    xeno_desc,
    ooc_notes,
  } = data;


  const [characterDesc, setCharacterDesc] = useLocalState(
    context,
    'characterDesc' + slot,
    flavor_text
  );
  const [medicalDesc, setMedicalDesc] = useLocalState(
    context,
    'medicalDesc' + slot,
    med_record
  );
  const [employmentDesc, setEmploymentDesc] = useLocalState(
    context,
    'employmentDesc' + slot,
    gen_record
  );
  const [securityDesc, setSecurityDesc] = useLocalState(
    context,
    'securityDesc' + slot,
    sec_record
  );
  const [exploitsDesc, setExploitsDesc] = useLocalState(
    context,
    'exploitsDesc' + slot,
    exploit_record
  );
  const [xenoDesc, setXenoDesc] = useLocalState(
    context,
    'xenoDesc' + slot,
    xeno_desc
  );
  const [NotesDesc, setNotesDesc] = useLocalState(
    context,
    'NotesDesc' + slot,
    ooc_notes
  );
  return (
    <Section title="Background information">
      <Section
        title="Character Description"
        buttons={
          <Box>
            <Button
              icon="save"
              disabled={characterDesc === flavor_text}
              onClick={() => act('flavor_text', { characterDesc })}>
              Save
            </Button>
            <Button
              icon="times"
              onClick={() => setCharacterDesc(flavor_text)}>
              Reset
            </Button>
          </Box>
        }>
        <TextArea
          key="character"
          height="100px"
          value={characterDesc}
          onChange={(e, value) => setCharacterDesc(value)}
        />
      </Section>

      <Grid>
        <Grid.Column>
          <Section
            title="Medical Records"
            buttons={
              <Box>
                <Button
                  icon="save"
                  disabled={medicalDesc === med_record}
                  onClick={() => act('med_record', { medicalDesc })}>
                  Save
                </Button>
                <Button
                  icon="times"
                  onClick={() => setMedicalDesc(med_record)}>
                  Reset
                </Button>
              </Box>
            }>
            <TextArea
              height="100px"
              maxLength={1024}
              value={medicalDesc}
              onChange={(e, value) => setMedicalDesc(value)}
            />
          </Section>
        </Grid.Column>
        <Grid.Column>
          <Section
            title="Employment Records"
            buttons={
              <Box>
                <Button
                  icon="save"
                  disabled={employmentDesc === gen_record}
                  onClick={() => act('gen_record', { employmentDesc })}>
                  Save
                </Button>
                <Button
                  icon="times"
                  onClick={() => setEmploymentDesc(gen_record)}>
                  Reset
                </Button>
              </Box>
            }>
            <TextArea
              height="100px"
              maxLength={1024}
              value={employmentDesc}
              onChange={(e, value) => setEmploymentDesc(value)}
            />
          </Section>
        </Grid.Column>
      </Grid>
      <Grid>
        <Grid.Column>
          <Section
            title="Security Records"
            buttons={
              <Box>
                <Button
                  icon="save"
                  disabled={securityDesc === sec_record}
                  onClick={() => act('sec_record', { securityDesc })}>
                  Save
                </Button>
                <Button
                  icon="times"
                  onClick={() => setSecurityDesc(sec_record)}>
                  Reset
                </Button>
              </Box>
            }>
            <TextArea
              height="100px"
              maxLength={1024}
              value={securityDesc}
              onChange={(e, value) => setSecurityDesc(value)}
            />
          </Section>
        </Grid.Column>
        <Grid.Column>
          <Section
            title="Exploit Records"
            buttons={
              <Box>
                <Button
                  icon="save"
                  disabled={exploitsDesc === exploit_record}
                  onClick={() => act('exploit_record', { exploitsDesc })}>
                  Save
                </Button>
                <Button
                  icon="times"
                  onClick={() => setExploitsDesc(exploit_record)}>
                  Reset
                </Button>
              </Box>
            }>
            <TextArea
              height="100px"
              maxLength={1024}
              value={exploitsDesc}
              onChange={(e, value) => setExploitsDesc(value)}
            />
          </Section>
        </Grid.Column>
      </Grid>
      <Divider />
      <Grid>
        <Grid.Column>
          <Section
            title="Xenomorph Description"
            buttons={
              <Box>
                <Button
                  icon="save"
                  disabled={xenoDesc === xeno_desc}
                  onClick={() => act('xeno_desc', { xenoDesc })}>
                  Save
                </Button>
                <Button
                  icon="times"
                  onClick={() => setXenoDesc(xeno_desc)}>
                  Reset
                </Button>
              </Box>
            }>
            <TextArea
              height="100px"
              maxLength={1024}
              value={xenoDesc}
              onChange={(e, value) => setXenoDesc(value)}
            />
          </Section>
        </Grid.Column>
      </Grid>
      <Divider />
      <Grid>
        <Grid.Column>
          <Section
            title="OOC Notes"
            buttons={
              <Box>
                <Button
                  icon="save"
                  disabled={NotesDesc === ooc_notes}
                  onClick={() => act('ooc_notes', { NotesDesc })}>
                  Save
                </Button>
                <Button
                  icon="times"
                  onClick={() => setNotesDesc(ooc_notes)}>
                  Reset
                </Button>
              </Box>
            }>
            <TextArea
              height="100px"
              maxLength={1024}
              value={NotesDesc}
              onChange={(e, value) => setNotesDesc(value)}
            />
          </Section>
        </Grid.Column>
      </Grid>
    </Section>
  );
};
