.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$_7BTfqD5-EyeOI7JvVLzd6MdM0g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$_7BTfqD5-EyeOI7JvVLzd6MdM0g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$_7BTfqD5-EyeOI7JvVLzd6MdM0g;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$_7BTfqD5-EyeOI7JvVLzd6MdM0g;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$_7BTfqD5-EyeOI7JvVLzd6MdM0g;->INSTANCE:Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$_7BTfqD5-EyeOI7JvVLzd6MdM0g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->lambda$onTrimMemory$3(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;)V

    return-void
.end method
