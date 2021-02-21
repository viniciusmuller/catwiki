import React from 'react';
import './styles.ts';
import { ReactComponent as AppLogo } from '../../assets/svg/CatwikiLogo.svg';

import { Wrapper, AppFooter, FooterText, FooterLink } from './styles';

function Footer() {
  return (
    <Wrapper>
      <AppFooter>
        <AppLogo />
        <FooterText>
          created by{' '}
          <FooterLink href="https://github.com/arcticlimer">
            arcticlimer
          </FooterLink>{' '}
          - devChallenge.io 2021
        </FooterText>
      </AppFooter>
    </Wrapper>
  );
}

export default Footer;
