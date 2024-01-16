function addOption() {
    let addOp = '<div class="productOption"><input type="text" name="productSize" placeholder="사이즈"><input type="text" name="productInvntCnt" placeholder="재고수"><div class="productOptionAdd deleteOption" onclick="removeOption(this)">삭제</div></div>';
    const LIST = document.querySelector(".productOptionList");
    LIST.innerHTML += addOp;
}

function removeOption(element) {
    element.parentNode.remove();
}