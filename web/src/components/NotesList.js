import React, { useEffect, useState } from 'react';
import styled from 'styled-components';
import { Link } from 'react-router-dom';
// import getLocalStorageData from '../utils/getLocalStorageData';

const NotesListContainer = styled.div`
    display: flex;
    flex-direction: column;
    min-width: 30vw;
    text-align: left;
    margin: 1rem;
    padding: 1rem;
    border: 2px solid #a0aec0;
    border-radius: 5px;
`;

const List = styled.ul`
    list-style: none;
`;

const ListItem = styled.li`
    margin: 0.5rem;
`;

const Separator = styled.hr`
    width: 90%;
    margin: -1px;
    background-color: #edf2f7;
    color: #edf2f7;
`;

// const NotesList = () => {
//     // const existing = localStorage.getItem('notes');
//     // const notes = existing ? JSON.parse(existing) : [];
//     const notes = getLocalStorageData('notes');

//     const listItems = notes.map((note) => {
//         return (
//             <ListItem key={note.id}>
//                 <h4>
//                     <Link to={`/edit/${note.id}`}>{ note.title }</Link>
//                 </h4>
//                 <p>{note.note.slice(0, 101)}</p>
//                 <Separator />
//             </ListItem>
//         );
//     });

//     return (
//         <NotesListContainer>
//             <List>{ listItems }</List>
//         </NotesListContainer>
//     );

// };
const NotesList = () => {
    const [notes, setNotes] = useState(null);

    useEffect(() => {
        
        async function fetchData() {
            const response = await fetch('http://localhost:5001/api/role');
            const data = await response.json();
            setNotes({data});
        }
    
        fetchData();
    }, []);

    const listItems = notes && notes.data.data.map((note) => {
        // console.log(note);
        return (
            <ListItem key={note.id}>
                <h4>
                    <Link to={`/edit/${note.id}`}>{ note.name }</Link>
                </h4>
                <p>{note.description.slice(0, 101)}</p>
                <Separator />
            </ListItem>
        );
    });

    return (
        <NotesListContainer>
            <List>{ listItems }</List>
        </NotesListContainer>
    );

};

export default NotesList;