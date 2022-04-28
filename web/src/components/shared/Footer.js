import React from "react";
import styled from "styled-components";

const Container = styled.div`
    margin: 1rem;
    padding: 0.5rem;
    min-height: 10vh;
`;

const Footer = () => {
    return (
        <Container>
            <p>
                <h1>Footer</h1>
            </p>
        </Container>
    );
}

export default Footer;