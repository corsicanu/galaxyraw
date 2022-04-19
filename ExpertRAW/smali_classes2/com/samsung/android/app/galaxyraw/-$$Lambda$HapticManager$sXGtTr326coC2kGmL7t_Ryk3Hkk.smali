.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$HapticManager$sXGtTr326coC2kGmL7t_Ryk3Hkk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/HapticManager;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/HapticManager;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$HapticManager$sXGtTr326coC2kGmL7t_Ryk3Hkk;->f$0:Lcom/samsung/android/app/galaxyraw/HapticManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$HapticManager$sXGtTr326coC2kGmL7t_Ryk3Hkk;->f$1:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$HapticManager$sXGtTr326coC2kGmL7t_Ryk3Hkk;->f$0:Lcom/samsung/android/app/galaxyraw/HapticManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$HapticManager$sXGtTr326coC2kGmL7t_Ryk3Hkk;->f$1:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/HapticManager;->lambda$playHaptic$0$HapticManager(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V

    return-void
.end method
