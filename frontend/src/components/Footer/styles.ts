import styled from 'styled-components';

export const Wrapper = styled.div`
  width: 100vw;
  position: absolute;
  bottom: 0;
`;
export const AppFooter = styled.footer`
  background-color: black;
  height: 5rem;
  padding-right: 2rem;
  padding-left: 4rem;
  margin: auto;

  border-radius: 1.5rem 1.5rem 0 0;
  width: 90%;

  display: flex;
  justify-content: space-between;
  align-items: center;
`;

export const FooterText = styled.p`
  color: #fff;
`;

export const FooterLink = styled.a`
  color: inherit;
  font-weight: bold;
`;
