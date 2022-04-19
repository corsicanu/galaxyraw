.class public Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;
.super Ljava/lang/Object;
.source "PlugInFilterStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlugInFilter"
.end annotation


# instance fields
.field private final mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field private final mDBId:I

.field private final mFilterIndex:I

.field private final mFilterName:Ljava/lang/String;

.field private final mLibName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mVendorName:Ljava/lang/String;

.field private final mVersion:I


# direct methods
.method public constructor <init>(ILcom/samsung/android/app/galaxyraw/interfaces/CommandId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
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
            "dbId",
            "commandId",
            "filterId",
            "vendorName",
            "filterName",
            "libName",
            "version",
            "title",
            "packageName"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mDBId:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mFilterIndex:I

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mVendorName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mFilterName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mLibName:Ljava/lang/String;

    iput p7, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mVersion:I

    iput-object p8, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mTitle:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method public getDBId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mDBId:I

    return p0
.end method

.method public getFilterIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mFilterIndex:I

    return p0
.end method

.method public getFilterName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mFilterName:Ljava/lang/String;

    return-object p0
.end method

.method public getLibName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mLibName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getVendorName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mVendorName:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->mVersion:I

    return p0
.end method
