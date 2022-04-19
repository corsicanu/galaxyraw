.class Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder;
.super Ljava/lang/Object;
.source "MakerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$MultiMakerBuilder;,
        Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$MakerInterfaceBuilder;,
        Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$Builder;
    }
.end annotation


# static fields
.field private static final mMakerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMultiMakerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$MultiMakerBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder;->mMakerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$2;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder;->mMultiMakerMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static build(Ljava/lang/Class;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "makerClass",
            "engine",
            "handler"
        }
    .end annotation

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerFactory;->create(Ljava/lang/Class;Landroid/os/Handler;Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid shootingMode ID : "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getMakerClass(IILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shootingModeId",
            "cameraId",
            "engine"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder;->mMultiMakerMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$MultiMakerBuilder;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$MultiMakerBuilder;->build(ILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder;->mMakerMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$Builder;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$Builder;->build(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid shootingMode ID : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
