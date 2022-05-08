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
                By iBoyDev &copy; 2020
            </p>
        </Container>
    );
}

export default Footer;