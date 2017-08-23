view: user_facts {
  derived_table: {
    sql:  SELECT
          users.id as user_id,
          count(orders.id) as orders_count,
          min(orders.created_at) as first_order_date,
          max(orders.created_at) as latest_order_date,
          datediff(curdate(),min(orders.created_at)) as days_since_first_purchase,
          case when (
              select count(*)
              from orders o
              where o.user_id = orders.user_id
              ) = 1  then 'No' else 'Yes' end as repeat_customer,
          (avg(total_number_of_orders))/12 as average_number_of_orders_per_month
          from (select count(orders.id) as total_number_of_orders from orders) as subq
          join orders
          left join users
          on users.id=orders.user_id
          group by users.id
          ;;
          persist_for: "24 hours"
          indexes:["user_id"]}

dimension: user_id {
type: number
}

dimension: orders_count {
  type: number
}

dimension: first_order_date {
  type: date
}

dimension: latest_order_date {
  type: date
}

dimension: days_since_first_purchase {
  type: number
}

dimension: repeat_customer  {
  type: yesno
}

dimension: average_number_of_orders_per_month {

}


  }
