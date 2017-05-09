module StaticPagesHelper

  def chart_member_count
    @results = Hash.new
    @results['Members'] = Member.count

    # Using Chartkick with HighCharts, as they are easier to customise the Tooltip formatting
    # See documentation at http://chartkick.com/ for installation
    Chartkick.options = {
        height: '300px',
        xAxis: {
            type: 'Linear'
        },
        yAxis: {
            title: {
                text: 'Total Members Count'
            }
        },
        colors: ["#3366CC", "#DC3912","#FF9900","#109618","#990099","#3B3EAC","#0099C6","#DD4477","#66AA00","#B82E2E","#316395","#994499","#22AA99","#AAAA11","#6633CC","#E67300","#8B0707","#329262","#5574A6","#3B3EAC"],
        library: {
            plotOptions: {
                column: {
                    colorByPoint: true
                }
            }
        }
    }
    # Render the column chart
    column_chart @results
  end

  def chart_card_balances
    @results = Hash.new
    c = CardHolder.all
    @results['Wallet 1'] = c.sum(:balance_1)
    @results['Wallet 2'] = c.sum(:balance_2)
    @results['Wallet 3'] = c.sum(:balance_3)
    @results['Wallet 4'] = c.sum(:balance_4)
    @results['Wallet 5'] = c.sum(:balance_5)


    # Using Chartkick with HighCharts, as they are easier to customise the Tooltip formatting
    # See documentation at http://chartkick.com/ for installation
    Chartkick.options = {
        height: '300px',
        xAxis: {
            type: 'Linear'
        },
        yAxis: {
            title: {
                text: 'Total Balance'
            }
        },
        colors: ["#3366CC", "#DC3912","#FF9900","#109618","#990099","#3B3EAC","#0099C6","#DD4477","#66AA00","#B82E2E","#316395","#994499","#22AA99","#AAAA11","#6633CC","#E67300","#8B0707","#329262","#5574A6","#3B3EAC"],
        library: {
            plotOptions: {
                column: {
                    colorByPoint: true
                }
            },
            tooltip: {
                valueDecimals: 2,
                valuePrefix: "£"
            }
        }
    }
    # Render the column chart
    column_chart @results
  end

  def chart_products_in_groups
    @results = Hash.new
    Group.all.each do |group|
      @results[group.name] = Plu.where(group_id: group.id).count
    end


    # Using Chartkick with HighCharts, as they are easier to customise the Tooltip formatting
    # See documentation at http://chartkick.com/ for installation
    Chartkick.options = {
        height: '300px',
        xAxis: {
            type: 'Linear',
            title: {text: 'Products'}
        },
        yAxis: {
            title: {
                text: 'Number of Products'
            }
        },
        colors: ["#3366CC", "#DC3912","#FF9900","#109618","#990099","#3B3EAC","#0099C6","#DD4477","#66AA00","#B82E2E","#316395","#994499","#22AA99","#AAAA11","#6633CC","#E67300","#8B0707","#329262","#5574A6","#3B3EAC"],
        library: {
            plotOptions: {
                column: {
                    colorByPoint: true
                }
            }
        }
    }
    # Render the column chart
    column_chart @results
  end
end
