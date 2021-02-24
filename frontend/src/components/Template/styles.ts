import styled from 'styled-components';

const Wrapper = styled.div`
  min-height: 100vh;
  padding: 0 4rem;

  display: flex;
  flex-direction: column;

  & > svg {
    padding-top: 1.5rem;
  }

  & > div {
    margin-top: 1.5rem;
  }

  footer {
    margin-top: auto;
  }
`;

export default Wrapper;
