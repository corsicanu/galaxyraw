.class public Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;
.super Ljava/lang/Object;
.source "PlugInMyFilterStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyFilter"
.end annotation


# instance fields
.field private final mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field private final mDBId:I

.field private final mFileName:Ljava/lang/String;

.field private final mFilterName:Ljava/lang/String;

.field private final mMyFilterIndex:I

.field private final mMyFilterPackageName:Ljava/lang/String;

.field private final mMyFilterThumbnail:[B

.field private final mMyFilterTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/samsung/android/app/galaxyraw/interfaces/CommandId;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
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
            0x0
        }
        names = {
            "dbId",
            "commandId",
            "filterId",
            "filterName",
            "fileName",
            "thumbnail",
            "title",
            "packageName"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mDBId:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mMyFilterIndex:I

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mFilterName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mFileName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mMyFilterThumbnail:[B

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mMyFilterTitle:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mMyFilterPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mFilterName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method public getDBId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mDBId:I

    return p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getMyFilterIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mMyFilterIndex:I

    return p0
.end method

.method public getMyFilterName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mFilterName:Ljava/lang/String;

    return-object p0
.end method

.method public getMyFilterPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mMyFilterPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getMyFilterThumbnail()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mMyFilterThumbnail:[B

    return-object p0
.end method

.method public getMyFilterTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->mMyFilterTitle:Ljava/lang/String;

    return-object p0
.end method
