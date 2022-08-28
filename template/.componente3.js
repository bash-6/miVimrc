customElements.define("<++>",
class Element extends HTMLElement{

	static get observedAttributes(){ return [""] }

	constructor(){
		super(); this.attachShadow({mode:"open"})

		//bind
	}

	attributeChangedCallback(name, oldValue, newValue){ }

	connectedCallback(){
		this.shadowRoot.innerHTML =`
		<++>
		`;

		//Logic
	}

	disconnectedCallback(){}
});

