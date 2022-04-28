import React, { useEffect, useState } from 'react'
import { useLocation, useNavigate } from 'react-router-dom';
import Button from './ui/Button';
import { Form, FormGroup, Input, Label, TextArea } from './ui/Form'

const EditNoteForm = () => {
    /*
    Custom Hooks dari package react-router-dom
    Untuk mendapatkan alamat dari page yang sedang diakses
    */
    const location = useLocation();

    /*
    Custom Hooks dari package react-router-dom
    Dapat digunakan untuk navigasi ke page atau component yang lain
    */
    const navigate = useNavigate();
    const [allNotes, setAllNotes] = useState(null);
    const [currentNote, setCurrentNote] = useState({ title: '', note: ''});


    /*
    Proses pengambilan data dilakukan setelah DOM diupdate
    Oleh karena itu kita menggunakan useEffect()
    */
    useEffect(() => {
        const existing = localStorage.getItem('notes');
        const notes = existing ? JSON.parse(existing) : [];

        setAllNotes(notes);

        // mengambil noteId dari location
        const noteId = location.pathname.replace('/edit/', '');

        // mengambil data note yang akan diedit
        const currentNote = notes.filter((note) => note.id === noteId);
    
        // simpan data note ke state
        setCurrentNote(currentNote[0]);
    }, []);

    const handleTitleChange = (e) => {
        setCurrentNote({ ...currentNote, title: e.target.value });
    };
    const handleNoteChange = (e) => {
        setCurrentNote({ ...currentNote, note: e.target.value });
    };

    const handleSubmit = (e) => {
        // update data notes
        const newNotes = allNotes.map((note) => {
            if (note.id === currentNote.id) {
                return { ...note, title: currentNote.title, note: currentNote.note };
            } else {
                return note;
            }
        });

        // replace data notes yang lama di local storage
        localStorage.setItem('notes', JSON.stringify(newNotes));
        e.preventDefault();
    };

    const handleDeleteNote = (e) => {
        /*
        Daripada menghapus note dari data notes lama
        Kita membuat array baru berisi notes tanpa memasukan note yang dihapus
        */
        const newNotes = allNotes.filter((note) => note.id !== currentNote.id);

        // kosongkan state setelah dihapus
        setCurrentNote(null);

        // simpan data notes baru ke state allNotes
        setAllNotes(newNotes);

        // update data di localStorage
        localStorage.setItem('notes', JSON.stringify(newNotes));

        // navigasi ke page Home setelah note dihapus
        navigate('/');
    };

    const { title, note } = currentNote;

    return (
        <Form onSubmit={handleSubmit}>
            <FormGroup>
                <Label>Title</Label>
                <Input type="text" name="title" value={title} onChange={handleTitleChange} />
            </FormGroup>
            <FormGroup>
                <Label>Note</Label>
                <TextArea name="note" rows="12" value={note} onChange={handleNoteChange} />
            </FormGroup>
            <FormGroup>
                <Button type="submit">Add</Button>
                <Button onClick={handleDeleteNote}>Delete</Button>
            </FormGroup>
        </Form>
    );
}

export default EditNoteForm;