.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$g-Z5ZUltLIBt0XcKsSLH2WkaLDM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$g-Z5ZUltLIBt0XcKsSLH2WkaLDM;->f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$g-Z5ZUltLIBt0XcKsSLH2WkaLDM;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$g-Z5ZUltLIBt0XcKsSLH2WkaLDM;->f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$g-Z5ZUltLIBt0XcKsSLH2WkaLDM;->f$1:I

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->lambda$initializeLayer$12(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;I)V

    return-void
.end method
