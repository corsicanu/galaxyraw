.class Lcom/samsung/android/app/galaxyraw/LatestMediaContent$SecureContentData;
.super Ljava/lang/Object;
.source "LatestMediaContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/LatestMediaContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecureContentData"
.end annotation


# instance fields
.field mBurstGroupId:I

.field mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "burstGroupId"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/LatestMediaContent$SecureContentData;->mUri:Landroid/net/Uri;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/LatestMediaContent$SecureContentData;->mBurstGroupId:I

    return-void
.end method
