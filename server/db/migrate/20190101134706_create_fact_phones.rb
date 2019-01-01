class CreateFactPhones < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_phones do |t|
      t.date :record_date
      t.references :language, foreign_key: true
      t.references :project, foreign_key: true
      t.integer :calls_off
      t.integer :calls_ans
      t.integer :calls_ans_sl
      t.integer :calls_abn
      t.integer :calls_abn_sl
      t.integer :time_talk
      t.integer :time_hold
      t.integer :time_wrap
      t.integer :queue_ans

      t.timestamps
    end
  end
end
