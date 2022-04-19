.class public Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mPermissionDrawableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionStringList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resource",
            "permissionStringList",
            "permissionDrawableList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter;->mPermissionStringList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter;->mPermissionDrawableList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez p2, :cond_0

    const p2, 0x7f0d0080

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$1;)V

    const v0, 0x7f0a0143

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a02e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter$ViewHolder;

    :goto_0
    iget-object v0, p3, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter;->mPermissionStringList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter;->mPermissionDrawableList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
