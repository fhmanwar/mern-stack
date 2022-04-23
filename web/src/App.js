import { React } from "react";
import { Routes, Route } from "react-router-dom";
// import './App.css';
import styled from "styled-components";
import AddPage from "./pages/Add";
import EditPage from "./pages/Edit";
import HomePage from "./pages/Home";

const Container = styled.div`
  text-align: center;
`;

function App() {
  return (
    <Container>
      <Routes>
        <Route path="/" element={<HomePage/>} />
        <Route path="/add" element={<AddPage/>} />
        <Route path="/edit" element={<EditPage/>} />
      </Routes>
    </Container>
  );
}

export default App;
