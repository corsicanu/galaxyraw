.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$9JhtYdUevIw5y7u3OmZTj9-kxXo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$9JhtYdUevIw5y7u3OmZTj9-kxXo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$9JhtYdUevIw5y7u3OmZTj9-kxXo;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$9JhtYdUevIw5y7u3OmZTj9-kxXo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$9JhtYdUevIw5y7u3OmZTj9-kxXo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$9JhtYdUevIw5y7u3OmZTj9-kxXo;

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

    check-cast p1, Landroid/view/Surface;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->lambda$releaseMediaRecorder$7(Landroid/view/Surface;)V

    return-void
.end method
