import React, { useState } from 'react';
import { v4 as uuidV4} from 'uuid'
import { Form, FormGroup, Input, Label, TextArea } from './ui/Form'
import Button from './ui/Button';

const AddNoteForm = () => {
    // state untuk menyimpan data note
    const [state, setState] = useState({ title: '', note: ''});

    // event handler untuk menyimpan data dari form input ke dalam state
    const handleTitleChange = (e) => {
        setState({ ...state, title: e.target.value });
    };

    const handleNoteChange = (e) => {
        setState({ ...state, note: e.target.value});
    };

    const handleSubmit = (e) => {
        /*
        Ambil data 'notes' di dalam localStorage
        Simpan ke dalam variable bernama existing
        */
        let existing = localStorage.getItem('notes');

        /*
        Cek jika sudah ada data bernama 'notes' di dalam localStorage
        Jika ada maka gunakan method JSON.parse() untuk membaca datanya
        Hal ini dikarenakan localStorage hanya bisa menyimpan tipe data String
        Jika tidak ada data di dalam 'notes' maka buat sebuah array kosong [] 
        */
        existing = existing ? JSON.parse(existing) : [];

        /*
        Setiap note harus memiliki id unik untuk membedakan dengan data note yang lain
        Kita bisa menggunakan package uuid dari npm
        Untuk menginstallnya gunakan command => yarn add uuid
        */
        const nodeId = uuidV4();

        // Tambahkan data note + noteId di dalam state ke array existing
        // existing.push({ ...state, id: noteId });
        existing[nodeId] = state;

        /*
        Simpan data ke localStorage dengan command localStorage.setItem()
        Gunakan method JSON.stringify() untuk mengubah object ke String
        Karena localStorage hanya bisa menyimpan tipe data String
        */
        localStorage.setItem('notes', JSON.stringify(existing))

        // membiarkan react menghandle data yang disubmit
        e.preventDefault();
    };

    const { title, note } = state;

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
            </FormGroup>
        </Form>
    );
}

export default AddNoteForm;