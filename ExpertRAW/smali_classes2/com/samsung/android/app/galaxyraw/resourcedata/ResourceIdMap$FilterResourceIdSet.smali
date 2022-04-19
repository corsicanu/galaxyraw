.class public Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;
.super Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;
.source "ResourceIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterResourceIdSet"
.end annotation


# instance fields
.field private mDBId:I

.field private mFilterIndex:I

.field private mFilterName:Ljava/lang/String;

.field private mFilterThumbnail:Landroid/graphics/Bitmap;

.field private mFilterTitle:Ljava/lang/String;

.field private mLibName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mVendorName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commandId",
            "imageResourceId",
            "title"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;III)V

    return-void
.end method


# virtual methods
.method public getDBId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mDBId:I

    return p0
.end method

.method public getFilterIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mFilterIndex:I

    return p0
.end method

.method public getFilterName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mFilterName:Ljava/lang/String;

    return-object p0
.end method

.method public getFilterThumbnail()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mFilterThumbnail:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getFilterTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mFilterTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getLibName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mLibName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getVendorName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mVendorName:Ljava/lang/String;

    return-object p0
.end method

.method public setDBId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dbId"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mDBId:I

    return-void
.end method

.method public setFilterIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterIndex"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mFilterIndex:I

    return-void
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterName"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mFilterName:Ljava/lang/String;

    return-void
.end method

.method public setFilterThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterThumbnail"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mFilterThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setFilterTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterTitle"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mFilterTitle:Ljava/lang/String;

    return-void
.end method

.method public setLibName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "libName"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mLibName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setVendorName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vendorName"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->mVendorName:Ljava/lang/String;

    return-void
.end method
