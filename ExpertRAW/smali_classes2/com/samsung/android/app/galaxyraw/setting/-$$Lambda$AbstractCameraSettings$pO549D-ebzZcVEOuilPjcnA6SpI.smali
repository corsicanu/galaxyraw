.class public final synthetic Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pO549D-ebzZcVEOuilPjcnA6SpI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/setting/ValueGetter;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pO549D-ebzZcVEOuilPjcnA6SpI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pO549D-ebzZcVEOuilPjcnA6SpI;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pO549D-ebzZcVEOuilPjcnA6SpI;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pO549D-ebzZcVEOuilPjcnA6SpI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pO549D-ebzZcVEOuilPjcnA6SpI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()I
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$140()I

    move-result p0

    return p0
.end method