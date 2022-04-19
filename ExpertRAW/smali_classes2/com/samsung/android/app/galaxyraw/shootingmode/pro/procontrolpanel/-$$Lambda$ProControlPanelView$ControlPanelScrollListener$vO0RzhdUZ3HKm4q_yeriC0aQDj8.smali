.class public final synthetic Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelView$ControlPanelScrollListener$vO0RzhdUZ3HKm4q_yeriC0aQDj8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelScrollListener;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelScrollListener;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelView$ControlPanelScrollListener$vO0RzhdUZ3HKm4q_yeriC0aQDj8;->f$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelScrollListener;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelView$ControlPanelScrollListener$vO0RzhdUZ3HKm4q_yeriC0aQDj8;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelView$ControlPanelScrollListener$vO0RzhdUZ3HKm4q_yeriC0aQDj8;->f$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelScrollListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelView$ControlPanelScrollListener$vO0RzhdUZ3HKm4q_yeriC0aQDj8;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelScrollListener;->lambda$onScrollStateChanged$1$ProControlPanelView$ControlPanelScrollListener(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    return-void
.end method
