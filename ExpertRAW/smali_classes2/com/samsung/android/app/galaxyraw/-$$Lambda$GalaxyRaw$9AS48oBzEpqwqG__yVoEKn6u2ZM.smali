.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$9AS48oBzEpqwqG__yVoEKn6u2ZM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$9AS48oBzEpqwqG__yVoEKn6u2ZM;->f$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$9AS48oBzEpqwqG__yVoEKn6u2ZM;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$9AS48oBzEpqwqG__yVoEKn6u2ZM;->f$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$9AS48oBzEpqwqG__yVoEKn6u2ZM;->f$1:I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->lambda$initializeLayer$13$GalaxyRaw(ILcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    return-void
.end method
