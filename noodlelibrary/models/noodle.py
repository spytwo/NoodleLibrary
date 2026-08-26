from enum import Enum

from sqlalchemy import Boolean, ForeignKey, String
from sqlalchemy import Enum as SQLEnum
from sqlalchemy.orm import Mapped, mapped_column, relationship

from noodlelibrary.models.base import Base
from noodlelibrary.models.country import Country
from noodlelibrary.models.manufacture import Manufacture


class PrepType(str, Enum):
    PACKET = "PACKET"
    CUP = "CUP"
    COOK = "COOK"


class DishBase(str, Enum):
    RICE = "RICE"
    NOODLE = "NOODLE"


class Noodle(Base):
    __tablename__ = "noodles"
    id: Mapped[int] = mapped_column(primary_key=True)
    title: Mapped[str] = mapped_column(String(255), nullable=False)
    description: Mapped[str | None] = mapped_column(String, nullable=True)
    recommendation: Mapped[bool] = mapped_column(Boolean, nullable=False)

    prep_type: Mapped[PrepType] = mapped_column(
        SQLEnum(PrepType, native_enum=False),
        nullable=False,
        default=PrepType.PACKET,
        server_default=PrepType.PACKET.value,
    )

    dish_base: Mapped[DishBase] = mapped_column(
        SQLEnum(DishBase, native_enum=False),
        nullable=False,
        default=DishBase.NOODLE,
        server_default=DishBase.NOODLE.value,
    )

    country_id: Mapped[int] = mapped_column(ForeignKey("countries.id"), nullable=False)
    manufacture_id: Mapped[int] = mapped_column(
        ForeignKey("manufactures.id"), nullable=False
    )
    image: Mapped[str] = mapped_column(String(500), nullable=False)

    country: Mapped["Country"] = relationship("Country", backref="noodles")
    manufacture: Mapped["Manufacture"] = relationship("Manufacture", backref="noodles")
