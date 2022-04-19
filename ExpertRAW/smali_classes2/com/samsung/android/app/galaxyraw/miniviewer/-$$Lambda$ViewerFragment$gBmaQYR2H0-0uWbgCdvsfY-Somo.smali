.class public final synthetic Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$gBmaQYR2H0-0uWbgCdvsfY-Somo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$gBmaQYR2H0-0uWbgCdvsfY-Somo;->f$0:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$gBmaQYR2H0-0uWbgCdvsfY-Somo;->f$0:Landroid/view/MotionEvent;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->lambda$onCreateView$6(Landroid/view/MotionEvent;Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;)V

    return-void
.end method
