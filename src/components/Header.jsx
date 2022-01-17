import React from 'react';
import '../app.css';
import punkLogo from '../assets/images/4.jpg';
import searchIcon from '../assets/images/searchIcon.png';

export default function Header() {
  return (
    <header className='header'>
      {/* <div className='logoContainer'>
        <img src={punkLogo} alt="one" className="punkLogo" />
      </div> */}
      <div>
        hellii
      </div>
      <div className='searchContainer'>
        <div className='searchIcon-container'>
          <img src={searchIcon} className='searchIcon' alt="search" />
          <input type="search" placeholder='Collection ,item, or user' className='searchInput' />
        </div>
      </div>
      <div className='nav-items'>
        <ul className='nav-items-ul'>
          <li>Drops</li>
          <li>Market Place</li>
          <li>Create</li>
        </ul>
      </div>
      <div className='darkMode-signinBtn'>
        <div className='darkMode'>
          dark mode icon
        </div>
        <div className='get-in'>
          <button type="submit" className='get-in-btn'>GET IN</button>
        </div>
      </div>
    </header>
  )
}
