.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$bCC38vvoBY-ByZf24EhCBuw2YsU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$bCC38vvoBY-ByZf24EhCBuw2YsU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$bCC38vvoBY-ByZf24EhCBuw2YsU;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$bCC38vvoBY-ByZf24EhCBuw2YsU;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$bCC38vvoBY-ByZf24EhCBuw2YsU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$bCC38vvoBY-ByZf24EhCBuw2YsU;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->lambda$closeNextFileDescriptor$4(Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;)V

    return-void
.end method
