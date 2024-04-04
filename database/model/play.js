module.exports = function (sequelize, DataTypes) {
  return sequelize.define(
    "play",
    {
      user: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: false,
        references: {
          model: "user",
          key: "id",
        },
      },
      level: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: false,
        references: {
          model: "level",
          key: "id",
        },
      },
      stars: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      attempts: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
    },
    {
      sequelize,
      tableName: "play",
      timestamps: false,
      indexes: [
        {
          name: "PRIMARY",
          unique: true,
          using: "BTREE",
          fields: [{ name: "user" }, { name: "level" }],
        },
      ],
    }
  );
};
