import React from "react";
import Container from "../components/ui/Conteiner";
import AddNoteForm from '../components/AddNoteForm';
import PageLayout from "../layouts/PageLayout";
import { Link } from "react-router-dom";

const AddPage = () => {
    return (
        <PageLayout>
            <Container>
                <div>
                    <h4>
                        <Link to='/'>Home</Link>
                    </h4>
                </div>
                <h2>Add New Note</h2>
                <AddNoteForm />
            </Container>
        </PageLayout>
    );
}
export default AddPage;