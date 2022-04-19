.class public final synthetic Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$MetadataAdapter$jVTCXFfO4niYlqgMu2r1CHjqGms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$MetadataAdapter$jVTCXFfO4niYlqgMu2r1CHjqGms;->f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$MetadataAdapter$jVTCXFfO4niYlqgMu2r1CHjqGms;->f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;->lambda$onBindViewHolder$1(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;Ljava/lang/String;)V

    return-void
.end method
