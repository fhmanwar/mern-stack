import React from "react";
import { Link } from 'react-router-dom';
import NotesList from "../components/NotesList";
import Container from "../components/ui/Conteiner";
import Button from "../components/ui/Button";
import PageLayout from "../layouts/PageLayout";

const HomePage = () => {
    return (
    <PageLayout>
        <Container>
            <Link to='/add'>
                <Button>Add New Note</Button>
            </Link>
            <h1>All Notes</h1>
            <NotesList>All Notes</NotesList>
        </Container>
    </PageLayout>
    );
}

export default HomePage;