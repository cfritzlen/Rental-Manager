-- Create leases table
CREATE TABLE IF NOT EXISTS leases (
    id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    
    -- Tenant Information
    tenant_names TEXT NOT NULL,
    tenant_email TEXT,
    tenant_phone TEXT,
    tenant_employer TEXT,
    
    -- Property Information
    property_address TEXT NOT NULL,
    
    -- Lease Dates
    lease_start DATE NOT NULL,
    lease_end DATE NOT NULL,
    lease_type TEXT NOT NULL, -- month_to_month, 12_month, 24_month
    
    -- Financial Information
    base_rent DECIMAL(10,2) NOT NULL,
    rent_amount DECIMAL(10,2) NOT NULL,
    security_deposit DECIMAL(10,2),
    first_month_rent DECIMAL(10,2),
    last_month_rent DECIMAL(10,2),
    
    -- Pet Information
    num_cats INTEGER DEFAULT 0,
    cat_fee DECIMAL(10,2) DEFAULT 0,
    num_dogs INTEGER DEFAULT 0,
    dog_fee DECIMAL(10,2) DEFAULT 0,
    
    -- Additional Information
    notes TEXT,
    status TEXT DEFAULT 'active' -- active, expired, terminated
);

-- Create index for faster queries
CREATE INDEX IF NOT EXISTS idx_leases_property ON leases(property_address);
CREATE INDEX IF NOT EXISTS idx_leases_status ON leases(status);
CREATE INDEX IF NOT EXISTS idx_leases_dates ON leases(lease_start, lease_end);
CREATE INDEX IF NOT EXISTS idx_leases_tenant ON leases(tenant_names);

-- Enable Row Level Security (RLS)
ALTER TABLE leases ENABLE ROW LEVEL SECURITY;

-- Create policy to allow all operations for authenticated users
-- For now, we'll allow anonymous access since you're the only user
CREATE POLICY "Allow all access to leases" ON leases
    FOR ALL
    USING (true)
    WITH CHECK (true);
