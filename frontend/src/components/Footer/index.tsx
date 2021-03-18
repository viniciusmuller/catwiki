import React from 'react';
import { ReactComponent as AppLogo } from '~/assets/svg/CatwikiLogo.svg';

import { AppFooter, FooterText, FooterLink } from './styles';

function Footer() {
  return (
    <AppFooter>
      <AppLogo fill="#fff" />
      <FooterText>
        created by{' '}
        <FooterLink href="https://github.com/arcticlimer">
          arcticlimer
        </FooterLink>{' '}
        - devchallenges.io 2021
      </FooterText>
    </AppFooter>
  );
}

export default Footer;
