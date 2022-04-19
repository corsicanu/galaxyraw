.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$6yeaoJfV-iRJJS14N_F2KQbCiV8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$6yeaoJfV-iRJJS14N_F2KQbCiV8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$6yeaoJfV-iRJJS14N_F2KQbCiV8;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$6yeaoJfV-iRJJS14N_F2KQbCiV8;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$6yeaoJfV-iRJJS14N_F2KQbCiV8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSessionController$6yeaoJfV-iRJJS14N_F2KQbCiV8;

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

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->lambda$cleanupFile$0(Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;)V

    return-void
.end method
