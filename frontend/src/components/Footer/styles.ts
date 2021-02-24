import styled from 'styled-components';

export const AppFooter = styled.footer`
  background-color: #000;
  height: 5rem;
  padding-right: 2rem;
  padding-left: 4rem;

  border-radius: 1.5rem 1.5rem 0 0;

  display: flex;
  flex-wrap: wrap;
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
