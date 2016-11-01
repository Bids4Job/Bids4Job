package domain;

import java.sql.Timestamp;

/**
 * 
 * @author Ioannis
 *
 */
public class Bid {

    private int bidId;
    private Timestamp bidTime;
    private double amount;
    private int proUserId;
    private int taskId;

    public int getBidId() {
        return bidId;
    }

    public Bid setBidId(int bidId) {
        this.bidId = bidId;
        return this;
    }

    public Timestamp getBidTime() {
        return bidTime;
    }

    public Bid setBidTime(Timestamp bidTime) {
        this.bidTime = bidTime;
        return this;
    }

    public double getAmount() {
        return amount;
    }

    public Bid setAmount(double amount) {
        this.amount = amount;
        return this;
    }

    public int getProUserId() {
        return proUserId;
    }

    public Bid setProUserId(int proUserId) {
        this.proUserId = proUserId;
        return this;
    }

    public int getTaskId() {
        return taskId;
    }

    public Bid setTaskId(int taskId) {
        this.taskId = taskId;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Bid)) return false;

        Bid bid = (Bid) o;

        return bidId == bid.bidId;

    }

    @Override
    public int hashCode() {
        return bidId;
    }

    @Override
    public String toString() {
        return "\nBid" + this.bidId + 
		"\nBid Time: " + this.bidTime + 
		"\nTask Id: " + this.taskId + 
		"\nProfessional User ID: " + this.proUserId +
		"\nAmount: " + this.amount +
		"\n";
    }
}