customElements.define("<++>",
class Element extends HTMLElement{

	static get observedAttributes(){
		return [""]
	}

	constructor(){
		super();
		this.attachShadow({mode:"open"})
	}

	connectedCallback(){
		let template = document.createElement("template");
		template.innerHTML =`
		<link rel="stylesheet" href="./css/<++>.css">

		<++>

		`;

		this.shadowRoot.append(template.content.cloneNode(true));
	}

	attributeChangedCallback(name, oldValue, newValue){}

})
