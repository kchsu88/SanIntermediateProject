.class public Lccsancom/applovin/impl/mediation/MaxRewardImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/mediation/MaxReward;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/MaxRewardImpl;->a:Ljava/lang/String;

    iput p1, p0, Lccsancom/applovin/impl/mediation/MaxRewardImpl;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Reward amount must be greater than or equal to 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(ILjava/lang/String;)Lccsancom/applovin/mediation/MaxReward;
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/mediation/MaxRewardImpl;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/mediation/MaxRewardImpl;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createDefault()Lccsancom/applovin/mediation/MaxReward;
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v0, v1}, Lccsancom/applovin/impl/mediation/MaxRewardImpl;->create(ILjava/lang/String;)Lccsancom/applovin/mediation/MaxReward;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getAmount()I
    .locals 1

    iget v0, p0, Lccsancom/applovin/impl/mediation/MaxRewardImpl;->b:I

    return v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MaxRewardImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MaxReward{}"

    return-object v0
.end method
