.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakeProcessingPictureRequest$HrbXcHkKQWv4R7vwUaYRzo3CY9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakeProcessingPictureRequest$HrbXcHkKQWv4R7vwUaYRzo3CY9o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakeProcessingPictureRequest$HrbXcHkKQWv4R7vwUaYRzo3CY9o;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakeProcessingPictureRequest$HrbXcHkKQWv4R7vwUaYRzo3CY9o;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakeProcessingPictureRequest$HrbXcHkKQWv4R7vwUaYRzo3CY9o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakeProcessingPictureRequest$HrbXcHkKQWv4R7vwUaYRzo3CY9o;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/TakeProcessingPictureRequest;->lambda$execute$0(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;)V

    return-void
.end method
