package hxz

type PassengerTag struct {
	PassengerID uint `json:"passengerId" gorm:"column:passenger_id;primaryKey"`
	TagID       uint `json:"tagId" gorm:"column:tag_id;primaryKey"`
}

func (PassengerTag) TableName() string {
	return "passenger_tags"
}
