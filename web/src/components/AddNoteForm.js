import React, { useState } from 'react';
import { Form, FormGroup, Input, Label, TextArea } from './ui/Form'
import Button from './ui/Button';
import Message from './ui/Message';
import { useNavigate } from 'react-router-dom';
// import { v4 as uuidV4} from 'uuid'
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

const AddNoteForm = () => {
    const navigate = useNavigate();
    // state untuk menyimpan data note
    const [state, setState] = useState({ name: '', description: ''});
    const [isSuccess, setIsSuccess] = useState(false);

    // event handler untuk menyimpan data dari form input ke dalam state
    const handleTitleChange = (e) => {
        setState({ ...state, name: e.target.value });
    };

    const handleNoteChange = (e) => {
        setState({ ...state, description: e.target.value});
    };

    // const handleSubmit = (e) => {
    //     /*
    //     Ambil data 'notes' di dalam localStorage
    //     Simpan ke dalam variable bernama existing
    //     */
    //     // let existing = localStorage.getItem('notes');

    //     /*
    //     Cek jika sudah ada data bernama 'notes' di dalam localStorage
    //     Jika ada maka gunakan method JSON.parse() untuk membaca datanya
    //     Hal ini dikarenakan localStorage hanya bisa menyimpan tipe data String
    //     Jika tidak ada data di dalam 'notes' maka buat sebuah array kosong [] 
    //     */
    //     // existing = existing ? JSON.parse(existing) : [];

    //     // mengambil data
    //     const notes = getLocalStorageData('notes');

    //     /*
    //     Setiap note harus memiliki id unik untuk membedakan dengan data note yang lain
    //     Kita bisa menggunakan package uuid dari npm
    //     Untuk menginstallnya gunakan command => yarn add uuid
    //     */
    //    //generate id
    //     const noteId = uuidV4();

    //     // Tambahkan data note + noteId di dalam state ke array existing
    //     // existing.push({ ...state, id: noteId });
    //     // existing[noteId] = state;        

    //     // menambahkan id ke note
    //     notes.push({ ...state, id: noteId });

    //     /*
    //     Simpan data ke localStorage dengan command localStorage.setItem()
    //     Gunakan method JSON.stringify() untuk mengubah object ke String
    //     Karena localStorage hanya bisa menyimpan tipe data String
    //     */
    //    // simpan note di localStorage
    //     // localStorage.setItem('notes', JSON.stringify(existing))
    //     localStorage.setItem('notes', JSON.stringify(notes));

    //     setIsSuccess(true);

    //     // membiarkan react menghandle data yang disubmit
    //     e.preventDefault();
    // };

    const handleSubmit = (e) => {
        const requestOptions = {
            method: 'POST',
            headers: { 'content-type': 'application/json' },
            body: JSON.stringify(state)
        };

        async function submitData() {
            const response = await fetch('http://localhost:5001/api/role', requestOptions);
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

    const { name, description } = state;

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
                </FormGroup>
            </Form>
        </>
    );
}

export default AddNoteForm;