import Rails from "@rails/ujs"
export function pagination_js(button) {
  Rails.ajax({
    type: "GET",
    url: "/set_page",
    data: "page="+button.dataset.page,
    success: function(repsonse){
      console.log("succses response")
      window.location.href=  window.location.href
    },
    error: function(repsonse){
      console.log("error")
    }
  })
}
