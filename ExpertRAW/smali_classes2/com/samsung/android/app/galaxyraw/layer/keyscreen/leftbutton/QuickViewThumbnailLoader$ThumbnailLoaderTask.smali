.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;
.super Landroid/os/AsyncTask;
.source "QuickViewThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update - QuickViewThumbnail : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CameraPerformance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UpdateQuickViewThumbnail"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    const-string v0, "QuickViewThumbnailLoader"

    const-string v2, "doInBackground : processing bitmap"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, p1

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLatestMedia()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground : uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;->getOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->access$200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1, v1, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;->access$400(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;)Landroid/graphics/Bitmap;

    move-result-object v0

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;->access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;->access$600(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    check-cast p1, [Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;->doInBackground([Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "QuickViewThumbnailLoader"

    const-string v1, "doInBackground : process bitmap complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->access$700(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;->onQuickViewThumbnailEmpty()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->access$700(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;->onQuickViewThumbnailLoaded(Landroid/graphics/Bitmap;Z)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ThumbnailLoaderTask;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
