.class public Lcom/samsung/android/app/galaxyraw/data/InvisibleFilterListItem;
.super Lcom/samsung/android/app/galaxyraw/data/FilterListItem;
.source "InvisibleFilterListItem.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;-><init>(Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;)V

    return-void
.end method


# virtual methods
.method public isFilterItem()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInvisibleFilterListItem()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPreloadFilter()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSelected()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
