.class public final synthetic Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$6wpPY_8ZrSOsD7HarMuFeCsJmyM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$6wpPY_8ZrSOsD7HarMuFeCsJmyM;->f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$6wpPY_8ZrSOsD7HarMuFeCsJmyM;->f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->releaseClickBlock()V

    return-void
.end method
