.class public Lcom/samsung/android/app/galaxyraw/feature/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field private static mFeature:Lcom/samsung/android/app/galaxyraw/feature/Feature;


# instance fields
.field private mRuntimeFeature:Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/Feature;->mRuntimeFeature:Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/feature/MockFeature;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mockFeature"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/feature/Feature;->mRuntimeFeature:Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;

    return-void
.end method

.method public static get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->instance()Lcom/samsung/android/app/galaxyraw/feature/Feature;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/feature/Feature;->mRuntimeFeature:Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p0

    return p0
.end method

.method public static get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->instance()Lcom/samsung/android/app/galaxyraw/feature/Feature;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/feature/Feature;->mRuntimeFeature:Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result p0

    return p0
.end method

.method public static get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->instance()Lcom/samsung/android/app/galaxyraw/feature/Feature;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/feature/Feature;->mRuntimeFeature:Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->instance()Lcom/samsung/android/app/galaxyraw/feature/Feature;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/feature/Feature;->mRuntimeFeature:Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->instance()Lcom/samsung/android/app/galaxyraw/feature/Feature;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/feature/Feature;->mRuntimeFeature:Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    return p0
.end method

.method private static instance()Lcom/samsung/android/app/galaxyraw/feature/Feature;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/Feature;->mFeature:Lcom/samsung/android/app/galaxyraw/feature/Feature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/feature/Feature;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/feature/Feature;->mFeature:Lcom/samsung/android/app/galaxyraw/feature/Feature;

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/Feature;->mFeature:Lcom/samsung/android/app/galaxyraw/feature/Feature;

    return-object v0
.end method

.method private static instance(Lcom/samsung/android/app/galaxyraw/feature/MockFeature;)Lcom/samsung/android/app/galaxyraw/feature/Feature;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mockFeature"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/feature/Feature;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MockFeature;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/feature/Feature;->mFeature:Lcom/samsung/android/app/galaxyraw/feature/Feature;

    return-object v0
.end method

.method public static setMockFeature(Lcom/samsung/android/app/galaxyraw/feature/MockFeature;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mockFeature"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->instance(Lcom/samsung/android/app/galaxyraw/feature/MockFeature;)Lcom/samsung/android/app/galaxyraw/feature/Feature;

    return-void
.end method
