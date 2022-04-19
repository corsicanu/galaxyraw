.class public final synthetic Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$R_pCDM7EoNAEyYhGoLlpRXakbro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/setting/ValueGetter;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$R_pCDM7EoNAEyYhGoLlpRXakbro;->f$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    return-void
.end method


# virtual methods
.method public final get()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$R_pCDM7EoNAEyYhGoLlpRXakbro;->f$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getMultiAfMode()I

    move-result p0

    return p0
.end method
