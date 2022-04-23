import { React } from "react";
import styled from "styled-components";
import PageLayout from "../layouts/PageLayout";

const Container = styled.div`
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    margin: 1rem;
`;

const Form = styled.form`
    display: flex;
    flex-direction: column;
    min-width: 30vw;
    margin: 1rem;
`;

const FormGroup = styled.div`
    display: flex;
    flex-direction: column;
`;

const Label = styled.label`
    text-align: left;
    color: #4a5569;
`;

const Input = styled.input`
    margin: 1rem 0;
    padding: 0.5rem;
`;

const TextArea = styled.textarea`
    margin: 1rem 0;
    padding: 0.5rem;
    resize: none;
`;

const Button = styled.button`
    background: #3182ce;
    color: white;
    font-size: 1em;
    margin: 1rem 0;
    padding: 0.75rem;
    border: 2px solid white;
    border-radius: 5px;
`;

const AddNoteForm = () => {
    return (
        <Form>
            <FormGroup>
                <Label>Title</Label>
                <Input type="text" name="title" />
            </FormGroup>
            <FormGroup>
                <Label>Note</Label>
                <TextArea name="note" rows="12" />
            </FormGroup>
            <FormGroup>
                <Button type="submit">Add</Button>
            </FormGroup>
        </Form>
    );
}
const AddPage = () => {
    return (
    <>
        <PageLayout>
            <Container>
                <h1>Add New Note</h1>
                <AddNoteForm />
            </Container>
        </PageLayout>
    </>
    );
}
export default AddPage;