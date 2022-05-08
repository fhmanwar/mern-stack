import React, { useEffect, useState } from 'react'
import { useLocation, useNavigate } from 'react-router-dom';
import Button from './ui/Button';
import { Form, FormGroup, Input, Label, TextArea } from './ui/Form'
import Message from './ui/Message';
// import getLocalStorageData from '../utils/getLocalStorageData';

const InfoWrapper = (props) => {
    const { status } = props;

    if (status !== null) {
        if (status === false) {
            return <Message type="error" text="Title harus diisi" />;
        }
        return <Message type="success" text="Data berhasil disimpan" />;
    }
    return <></>;
};

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
    // const [allNotes, setAllNotes] = useState(null);
    const [currentNote, setCurrentNote] = useState({ name: '', description: ''});
    const [isSuccess, setIsSuccess] = useState(null);

    /*
    Proses pengambilan data dilakukan setelah DOM diupdate
    Oleh karena itu kita menggunakan useEffect()
    */
    // useEffect(() => {
    //     // const existing = localStorage.getItem('notes');
    //     // const notes = existing ? JSON.parse(existing) : [];
    //     const notes = getLocalStorageData('notes');

    //     setAllNotes(notes);

    //     // mengambil noteId dari location
    //     const noteId = location.pathname.replace('/edit/', '');

    //     // mengambil data note yang akan diedit
    //     const currentNote = notes.filter((note) => note.id === noteId);
    
    //     // simpan data note ke state
    //     setCurrentNote(currentNote[0]);
    // }, []);
    useEffect(() => {
        const dataId = location.pathname.replace('/edit/', '');
        async function fetchData() {
            const response = await fetch(`http://localhost:5001/api/role/${dataId}`);
            const data = await response.json();
            setCurrentNote(data.data[0]);
            console.log(data.data[0]);
        }

        fetchData();
    }, []);

    const handleTitleChange = (e) => {
        setCurrentNote({ ...currentNote, name: e.target.value });
    };
    const handleNoteChange = (e) => {
        setCurrentNote({ ...currentNote, description: e.target.value });
    };

    // const handleSubmit = (e) => {
    //     // update data notes
    //     const newNotes = allNotes.map((note) => {
    //         if (note.id === currentNote.id) {
    //             return { ...note, title: currentNote.title, note: currentNote.note };
    //         } else {
    //             return note;
    //         }
    //     });

    //     // replace data notes yang lama di local storage
    //     localStorage.setItem('notes', JSON.stringify(newNotes));
    //     e.preventDefault();
    // };
    const handleSubmit = (e) => {
        const options = {
            method: 'PUT',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(currentNote)
        };
    
        async function submitData() {
            const response = await fetch(`http://localhost:5001/api/role/${currentNote.id}`, options);
            if (response.ok) {
                setIsSuccess(true);
                navigate('/');
            } else {
                setIsSuccess(false);
                navigate('/');
            }
        }
    
        submitData();
        e.preventDefault();
    };

    // const handleDeleteNote = (e) => {
    //     /*
    //     Daripada menghapus note dari data notes lama
    //     Kita membuat array baru berisi notes tanpa memasukan note yang dihapus
    //     */
    //     const newNotes = allNotes.filter((note) => note.id !== currentNote.id);

    //     // kosongkan state setelah dihapus
    //     setCurrentNote(null);

    //     // simpan data notes baru ke state allNotes
    //     setAllNotes(newNotes);

    //     // update data di localStorage
    //     localStorage.setItem('notes', JSON.stringify(newNotes));

    //     // navigasi ke page Home setelah note dihapus
    //     navigate('/');
    // };
    const handleDeleteNote = (e) => {
        const options = {
            method: 'DELETE',
            headers: { 'Content-Type': 'application/json' }
        };
    
        async function deleteData() {
            const response = await fetch(`http://localhost:5001/api/role/${currentNote.id}`, options);
            if (response.ok) {
                navigate('/');
            }
        }
    
        deleteData();
    };

    const { name, description } = currentNote;

    return (
        <>
            <InfoWrapper status={isSuccess} />
            <Form onSubmit={handleSubmit}>
                <FormGroup>
                    <Label>Title</Label>
                    <Input type="text" name="title" value={name} onChange={handleTitleChange} />
                </FormGroup>
                <FormGroup>
                    <Label>Note</Label>
                    <TextArea name="note" rows="12" value={description} onChange={handleNoteChange} />
                </FormGroup>
                <FormGroup>
                    <Button type="submit">Save</Button>
                    <Button danger onClick={handleDeleteNote}>Delete</Button>
                </FormGroup>
            </Form>
        </>
    );
}

export default EditNoteForm;