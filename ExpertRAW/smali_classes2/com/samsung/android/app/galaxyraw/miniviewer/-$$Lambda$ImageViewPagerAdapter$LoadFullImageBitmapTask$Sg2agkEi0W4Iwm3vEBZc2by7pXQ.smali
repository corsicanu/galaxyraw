.class public final synthetic Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ImageViewPagerAdapter$LoadFullImageBitmapTask$Sg2agkEi0W4Iwm3vEBZc2by7pXQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Object;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ImageViewPagerAdapter$LoadFullImageBitmapTask$Sg2agkEi0W4Iwm3vEBZc2by7pXQ;->f$0:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ImageViewPagerAdapter$LoadFullImageBitmapTask$Sg2agkEi0W4Iwm3vEBZc2by7pXQ;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ImageViewPagerAdapter$LoadFullImageBitmapTask$Sg2agkEi0W4Iwm3vEBZc2by7pXQ;->f$0:[Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ImageViewPagerAdapter$LoadFullImageBitmapTask$Sg2agkEi0W4Iwm3vEBZc2by7pXQ;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter$LoadFullImageBitmapTask;->lambda$doInBackground$1([Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method
