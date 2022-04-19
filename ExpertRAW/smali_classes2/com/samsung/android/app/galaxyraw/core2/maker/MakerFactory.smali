.class public Lcom/samsung/android/app/galaxyraw/core2/maker/MakerFactory;
.super Ljava/lang/Object;
.source "MakerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/maker/MakerFactory$MakerBuilder;
    }
.end annotation


# static fields
.field public static final MAKER_PRO_RAW_PHOTO:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final mMakerBuildMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/samsung/android/app/galaxyraw/core2/maker/MakerFactory$MakerBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerFactory;->MAKER_PRO_RAW_PHOTO:Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerFactory;->mMakerBuildMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$YrbTEIhGsiu8rjOvgUREJlRdxok;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$YrbTEIhGsiu8rjOvgUREJlRdxok;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Class;Landroid/os/Handler;Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "maker",
            "handler",
            "context"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerFactory;->mMakerBuildMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerFactory$MakerBuilder;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerFactory$MakerBuilder;->build(Landroid/os/Handler;Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    move-result-object p0

    return-object p0
.end method
