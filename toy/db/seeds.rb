# -*- encoding: UTF-8 -*-

names = [ "切手を買う", "報告書を書く", "家賃を払う", "猫の餌を買う", "燃えないゴミを出す"]

5.times do |n|
  Task.create(:name => names[n],
              :due_date => (n - 2).days.from_now,
              :done => n.zero?)
end

200.times do |n|
  Task.create(:name => "Task #{n}",
              :due_date => (n + 3).days.from_now,
              :done => false)
end