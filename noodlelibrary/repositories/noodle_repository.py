from sqlalchemy import func, select
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.orm import selectinload

from noodlelibrary.models import Country, DishBase, Manufacture, Noodle


async def get_count_noodles(db: AsyncSession) -> int:
    stmt = select(func.count(Noodle.id))
    result = await db.execute(stmt)
    return result.scalar()


async def get_all_countries(db: AsyncSession):
    stmt = select(Country).order_by(Country.name)
    result = await db.execute(stmt)
    return result.scalars().all()


async def get_all_manufactures(db: AsyncSession):
    stmt = select(Manufacture)
    result = await db.execute(stmt)
    return result.scalars().all()


async def get_noodles_by_country(db: AsyncSession, country_name: str):
    stmt = (
        select(Noodle)
        .join(Noodle.country)
        .filter(Country.name == country_name)
        .options(selectinload(Noodle.country))
        .options(selectinload(Noodle.manufacture))
        .order_by(Noodle.id.desc())
    )
    result = await db.execute(stmt)
    return result.scalars().all()


async def get_noodles_by_manufacture(db: AsyncSession, manufacture_name: str):
    stmt = (
        select(Noodle)
        .join(Noodle.manufacture)
        .filter(Manufacture.name == manufacture_name)
        .options(selectinload(Noodle.country))
        .options(selectinload(Noodle.manufacture))
        .order_by(Noodle.id.desc())
    )
    result = await db.execute(stmt)
    return result.scalars().all()


async def get_noodle_by_id(db: AsyncSession, noodle_id: int):
    stmt = (
        select(Noodle)
        .filter(Noodle.id == noodle_id)
        .options(selectinload(Noodle.country))
        .options(selectinload(Noodle.manufacture))
        .order_by(Noodle.id.desc())
    )
    result = await db.execute(stmt)
    return result.scalars().first()


async def get_recommended_noodles(db: AsyncSession):
    stmt = (
        select(Noodle)
        .where(Noodle.recommendation.is_(True))
        .options(selectinload(Noodle.country))
        .options(selectinload(Noodle.manufacture))
        .order_by(Noodle.id.desc())
    )
    result = await db.execute(stmt)
    return result.scalars().all()


async def get_noodles_by_type(db: AsyncSession, type: str):
    stmt = (
        select(Noodle)
        .where(Noodle.prep_type == type, Noodle.dish_base != DishBase.RICE)
        .options(selectinload(Noodle.country))
        .options(selectinload(Noodle.manufacture))
        .order_by(Noodle.id.desc())
    )
    result = await db.execute(stmt)
    return result.scalars().all()


async def get_all_rice(db: AsyncSession, dish_base: str):
    stmt = (
        select(Noodle)
        .where(Noodle.dish_base == dish_base)
        .options(selectinload(Noodle.country))
        .options(selectinload(Noodle.manufacture))
        .order_by(Noodle.id.desc())
    )
    result = await db.execute(stmt)
    return result.scalars().all()
