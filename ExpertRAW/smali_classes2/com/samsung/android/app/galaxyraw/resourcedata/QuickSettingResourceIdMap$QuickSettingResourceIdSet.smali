.class public Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;
.super Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;
.source "QuickSettingResourceIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickSettingResourceIdSet"
.end annotation


# instance fields
.field private final mFormatValue:I

.field private final mIsLandscapeDrawableSupported:Z

.field private final mLandscapeToastSubString:I

.field private final mSubTitle:I

.field private final mToastString:I

.field private final mToastSubString:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageResourceId",
            "title",
            "contentDescription"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mSubTitle:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mToastString:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mToastSubString:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mLandscapeToastSubString:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mFormatValue:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mIsLandscapeDrawableSupported:Z

    return-void
.end method

.method constructor <init>(IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageResourceId",
            "title",
            "subTitle",
            "contentDescription",
            "toastString",
            "toastSubString"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mSubTitle:I

    iput p5, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mToastString:I

    iput p6, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mToastSubString:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mLandscapeToastSubString:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mFormatValue:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mIsLandscapeDrawableSupported:Z

    return-void
.end method

.method constructor <init>(IIIIIIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageResourceId",
            "title",
            "subTitle",
            "contentDescription",
            "toastString",
            "toastSubString",
            "landscapeToastSubString",
            "formatValue",
            "isLandscapeDrawableSupported"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mSubTitle:I

    iput p5, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mToastString:I

    iput p6, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mToastSubString:I

    iput p7, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mLandscapeToastSubString:I

    iput p8, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mFormatValue:I

    iput-boolean p9, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mIsLandscapeDrawableSupported:Z

    return-void
.end method


# virtual methods
.method public getFormatValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mFormatValue:I

    return p0
.end method

.method public getLandscapeToastSubStringId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mLandscapeToastSubString:I

    return p0
.end method

.method public getSubTitleId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mSubTitle:I

    return p0
.end method

.method public getToastStringId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mToastString:I

    return p0
.end method

.method public getToastSubStringId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mToastSubString:I

    return p0
.end method

.method public isLandscapeDrawableSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->mIsLandscapeDrawableSupported:Z

    return p0
.end method
