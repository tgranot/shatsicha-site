// Navbar scroll effect
window.addEventListener('scroll', () => {
    const navbar = document.getElementById('navbar');
    navbar.classList.toggle('scrolled', window.scrollY > 50);
});

// Mobile nav toggle
function toggleNav() {
    document.getElementById('navLinks').classList.toggle('open');
}

// Close mobile nav on link click
document.querySelectorAll('.nav-links a').forEach(link => {
    link.addEventListener('click', () => {
        document.getElementById('navLinks').classList.remove('open');
    });
});

// FAQ accordion (one open at a time)
function toggleFaq(btn) {
    const item = btn.parentElement;
    const wasOpen = item.classList.contains('open');

    document.querySelectorAll('.faq-item').forEach(i => i.classList.remove('open'));

    if (!wasOpen) {
        item.classList.add('open');
    }
}

// Scroll reveal
const revealObserver = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.classList.add('visible');
        }
    });
}, { threshold: 0.15 });

document.querySelectorAll('.reveal').forEach(el => revealObserver.observe(el));

// Contact form submit via Web3Forms
const contactForm = document.getElementById('contactForm');
if (contactForm) {
    contactForm.addEventListener('submit', async (e) => {
        e.preventDefault();

        const submitBtn = contactForm.querySelector('.btn-submit');
        submitBtn.disabled = true;
        submitBtn.textContent = 'שולח...';

        try {
            const response = await fetch('https://api.web3forms.com/submit', {
                method: 'POST',
                body: new FormData(contactForm)
            });
            const data = await response.json();

            if (data.success) {
                const elements = contactForm.querySelectorAll('.form-group, .form-row, .btn-submit');
                elements.forEach(el => el.style.display = 'none');
                document.getElementById('formSuccess').style.display = 'block';
            } else {
                submitBtn.disabled = false;
                submitBtn.textContent = 'שליחה';
                alert('אירעה שגיאה, נא לנסות שוב');
            }
        } catch {
            submitBtn.disabled = false;
            submitBtn.textContent = 'שליחה';
            alert('אירעה שגיאה, נא לנסות שוב');
        }
    });
}
